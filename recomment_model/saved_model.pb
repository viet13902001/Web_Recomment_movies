¯ë
Î
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68û÷
¥
$recommender_net/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯2*5
shared_name&$recommender_net/embedding/embeddings

8recommender_net/embedding/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/embedding/embeddings*
_output_shapes
:	¯2*
dtype0
©
&recommender_net/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯*7
shared_name(&recommender_net/embedding_1/embeddings
¢
:recommender_net/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_1/embeddings*
_output_shapes
:	¯*
dtype0
©
&recommender_net/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*7
shared_name(&recommender_net/embedding_2/embeddings
¢
:recommender_net/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_2/embeddings*
_output_shapes
:	2*
dtype0
©
&recommender_net/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*7
shared_name(&recommender_net/embedding_3/embeddings
¢
:recommender_net/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&recommender_net/embedding_3/embeddings*
_output_shapes
:	*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
³
+Adam/recommender_net/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯2*<
shared_name-+Adam/recommender_net/embedding/embeddings/m
¬
?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/m*
_output_shapes
:	¯2*
dtype0
·
-Adam/recommender_net/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/m
°
AAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/m*
_output_shapes
:	¯*
dtype0
·
-Adam/recommender_net/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/m
°
AAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/m*
_output_shapes
:	2*
dtype0
·
-Adam/recommender_net/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/m
°
AAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/m*
_output_shapes
:	*
dtype0
³
+Adam/recommender_net/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯2*<
shared_name-+Adam/recommender_net/embedding/embeddings/v
¬
?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp+Adam/recommender_net/embedding/embeddings/v*
_output_shapes
:	¯2*
dtype0
·
-Adam/recommender_net/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¯*>
shared_name/-Adam/recommender_net/embedding_1/embeddings/v
°
AAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_1/embeddings/v*
_output_shapes
:	¯*
dtype0
·
-Adam/recommender_net/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*>
shared_name/-Adam/recommender_net/embedding_2/embeddings/v
°
AAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_2/embeddings/v*
_output_shapes
:	2*
dtype0
·
-Adam/recommender_net/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*>
shared_name/-Adam/recommender_net/embedding_3/embeddings/v
°
AAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/recommender_net/embedding_3/embeddings/v*
_output_shapes
:	*
dtype0

NoOpNoOp
¡1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ü0
valueÒ0BÏ0 BÈ0

user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
 
#
embeddings
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*

*iter

+beta_1

,beta_2
	-decay
.learning_ratembmcmd#mevfvgvh#vi*
 
0
1
2
#3*
 
0
1
2
#3*

/0
01* 
°
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

6serving_default* 
rl
VARIABLE_VALUE$recommender_net/embedding/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
	
/0* 

7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
oi
VARIABLE_VALUE&recommender_net/embedding_1/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
uo
VARIABLE_VALUE&recommender_net/embedding_2/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
	
00* 

Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
pj
VARIABLE_VALUE&recommender_net/embedding_3/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

#0*

#0*
* 

Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
 
0
1
2
3*
 
K0
L1
M2
N3*
* 
* 
* 
* 
* 
* 
	
/0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
00* 
* 
* 
* 
* 
* 
* 
8
	Ototal
	Pcount
Q	variables
R	keras_api*
H
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api*
H
	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api*
H
	]total
	^count
_
_fn_kwargs
`	variables
a	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

Q	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

S0
T1*

V	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

X0
Y1*

[	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

]0
^1*

`	variables*

VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/mPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/mKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/mQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/mLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/recommender_net/embedding/embeddings/vPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_1/embeddings/vKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_2/embeddings/vQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/recommender_net/embedding_3/embeddings/vLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
Ø
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_283732
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ã
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename8recommender_net/embedding/embeddings/Read/ReadVariableOp:recommender_net/embedding_1/embeddings/Read/ReadVariableOp:recommender_net/embedding_2/embeddings/Read/ReadVariableOp:recommender_net/embedding_3/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/m/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/m/Read/ReadVariableOp?Adam/recommender_net/embedding/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_1/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_2/embeddings/v/Read/ReadVariableOpAAdam/recommender_net/embedding_3/embeddings/v/Read/ReadVariableOpConst*&
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_283940
Ê
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$recommender_net/embedding/embeddings&recommender_net/embedding_1/embeddings&recommender_net/embedding_2/embeddings&recommender_net/embedding_3/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3+Adam/recommender_net/embedding/embeddings/m-Adam/recommender_net/embedding_1/embeddings/m-Adam/recommender_net/embedding_2/embeddings/m-Adam/recommender_net/embedding_3/embeddings/m+Adam/recommender_net/embedding/embeddings/v-Adam/recommender_net/embedding_1/embeddings/v-Adam/recommender_net/embedding_2/embeddings/v-Adam/recommender_net/embedding_3/embeddings/v*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_284025Òø
·
Ü
__inference_loss_fn_0_283831b
Orecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource:	¯2
identity¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp×
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpOrecommender_net_embedding_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity8recommender_net/embedding/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp
Û
à
__inference_loss_fn_1_283842d
Qrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource:	2
identity¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpÛ
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpQrecommender_net_embedding_2_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity:recommender_net/embedding_2/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp
Óh

!__inference__wrapped_model_283317
input_1	D
1recommender_net_embedding_embedding_lookup_283245:	¯2F
3recommender_net_embedding_1_embedding_lookup_283254:	¯F
3recommender_net_embedding_2_embedding_lookup_283263:	2F
3recommender_net_embedding_3_embedding_lookup_283272:	
identity¢*recommender_net/embedding/embedding_lookup¢,recommender_net/embedding_1/embedding_lookup¢,recommender_net/embedding_2/embedding_lookup¢,recommender_net/embedding_3/embedding_lookupt
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¹
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask£
*recommender_net/embedding/embedding_lookupResourceGather1recommender_net_embedding_embedding_lookup_283245&recommender_net/strided_slice:output:0*
Tindices0	*D
_class:
86loc:@recommender_net/embedding/embedding_lookup/283245*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ì
3recommender_net/embedding/embedding_lookup/IdentityIdentity3recommender_net/embedding/embedding_lookup:output:0*
T0*D
_class:
86loc:@recommender_net/embedding/embedding_lookup/283245*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2±
5recommender_net/embedding/embedding_lookup/Identity_1Identity<recommender_net/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask«
,recommender_net/embedding_1/embedding_lookupResourceGather3recommender_net_embedding_1_embedding_lookup_283254(recommender_net/strided_slice_1:output:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_1/embedding_lookup/283254*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ò
5recommender_net/embedding_1/embedding_lookup/IdentityIdentity5recommender_net/embedding_1/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net/embedding_1/embedding_lookup/283254*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7recommender_net/embedding_1/embedding_lookup/Identity_1Identity>recommender_net/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask«
,recommender_net/embedding_2/embedding_lookupResourceGather3recommender_net_embedding_2_embedding_lookup_283263(recommender_net/strided_slice_2:output:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_2/embedding_lookup/283263*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ò
5recommender_net/embedding_2/embedding_lookup/IdentityIdentity5recommender_net/embedding_2/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net/embedding_2/embedding_lookup/283263*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2µ
7recommender_net/embedding_2/embedding_lookup/Identity_1Identity>recommender_net/embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2v
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask«
,recommender_net/embedding_3/embedding_lookupResourceGather3recommender_net_embedding_3_embedding_lookup_283272(recommender_net/strided_slice_3:output:0*
Tindices0	*F
_class<
:8loc:@recommender_net/embedding_3/embedding_lookup/283272*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ò
5recommender_net/embedding_3/embedding_lookup/IdentityIdentity5recommender_net/embedding_3/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net/embedding_3/embedding_lookup/283272*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7recommender_net/embedding_3/embedding_lookup/Identity_1Identity>recommender_net/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       a
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 
recommender_net/Tensordot/ShapeShape>recommender_net/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:i
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ù
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:©
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Í
#recommender_net/Tensordot/transpose	Transpose>recommender_net/embedding/embedding_lookup/Identity_1:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 
!recommender_net/Tensordot/Shape_1Shape@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: i
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:Ó
%recommender_net/Tensordot/transpose_1	Transpose@recommender_net/embedding_2/embedding_lookup/Identity_1:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : è
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: 
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: ´
recommender_net/addAddV2"recommender_net/Tensordot:output:0@recommender_net/embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
recommender_net/add_1AddV2recommender_net/add:z:0@recommender_net/embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
recommender_net/SigmoidSigmoidrecommender_net/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentityrecommender_net/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp+^recommender_net/embedding/embedding_lookup-^recommender_net/embedding_1/embedding_lookup-^recommender_net/embedding_2/embedding_lookup-^recommender_net/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2X
*recommender_net/embedding/embedding_lookup*recommender_net/embedding/embedding_lookup2\
,recommender_net/embedding_1/embedding_lookup,recommender_net/embedding_1/embedding_lookup2\
,recommender_net/embedding_2/embedding_lookup,recommender_net/embedding_2/embedding_lookup2\
,recommender_net/embedding_3/embedding_lookup,recommender_net/embedding_3/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
²
¥
G__inference_embedding_1_layer_call_and_return_conditional_losses_283776

inputs	*
embedding_lookup_283770:	¯
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_283770inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283770*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283770*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ía
®
K__inference_recommender_net_layer_call_and_return_conditional_losses_283456

inputs	#
embedding_283344:	¯2%
embedding_1_283361:	¯%
embedding_2_283384:	2%
embedding_3_283401:	
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_283344*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_283343f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_283361*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_283360f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_283384*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_283383f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_283401*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_283400_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB i
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_283344*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_283384*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±h
Ö
K__inference_recommender_net_layer_call_and_return_conditional_losses_283717

inputs	4
!embedding_embedding_lookup_283633:	¯26
#embedding_1_embedding_lookup_283642:	¯6
#embedding_2_embedding_lookup_283651:	26
#embedding_3_embedding_lookup_283660:	
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookup¢embedding_2/embedding_lookup¢embedding_3/embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskã
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_283633strided_slice:output:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/283633*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0¼
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/283633*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskë
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_283642strided_slice_1:output:0*
Tindices0	*6
_class,
*(loc:@embedding_1/embedding_lookup/283642*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Â
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/283642*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskë
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_283651strided_slice_2:output:0*
Tindices0	*6
_class,
*(loc:@embedding_2/embedding_lookup/283651*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0Â
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/283651*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskë
embedding_3/embedding_lookupResourceGather#embedding_3_embedding_lookup_283660strided_slice_3:output:0*
Tindices0	*6
_class,
*(loc:@embedding_3/embedding_lookup/283660*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Â
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_3/embedding_lookup/283660*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB m
Tensordot/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB q
Tensordot/Shape_1Shape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:£
Tensordot/transpose_1	Transpose0embedding_2/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
add_1AddV2add:z:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp!embedding_embedding_lookup_283633*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ­
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp#embedding_2_embedding_lookup_283651*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup^embedding_2/embedding_lookup^embedding_3/embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
ì
E__inference_embedding_layer_call_and_return_conditional_losses_283760

inputs	*
embedding_lookup_283748:	¯2
identity¢embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpµ
embedding_lookupResourceGatherembedding_lookup_283748inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283748*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283748*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_283748*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
Ô
$__inference_signature_wrapper_283732
input_1	
unknown:	¯2
	unknown_0:	¯
	unknown_1:	2
	unknown_2:	
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_283317o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
³
à
0__inference_recommender_net_layer_call_fn_283467
input_1	
unknown:	¯2
	unknown_0:	¯
	unknown_1:	2
	unknown_2:	
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_283456o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ù
ì
E__inference_embedding_layer_call_and_return_conditional_losses_283343

inputs	*
embedding_lookup_283331:	¯2
identity¢embedding_lookup¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpµ
embedding_lookupResourceGatherembedding_lookup_283331inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283331*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283331*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_283331*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¢
NoOpNoOp^embedding_lookupG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ð
G__inference_embedding_2_layer_call_and_return_conditional_losses_283383

inputs	*
embedding_lookup_283371:	2
identity¢embedding_lookup¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpµ
embedding_lookupResourceGatherembedding_lookup_283371inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283371*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283371*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_283371*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¤
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
G__inference_embedding_1_layer_call_and_return_conditional_losses_283360

inputs	*
embedding_lookup_283354:	¯
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_283354inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283354*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283354*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
ß
0__inference_recommender_net_layer_call_fn_283626

inputs	
unknown:	¯2
	unknown_0:	¯
	unknown_1:	2
	unknown_2:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_283456o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


,__inference_embedding_1_layer_call_fn_283767

inputs	
unknown:	¯
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_283360o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


,__inference_embedding_2_layer_call_fn_283789

inputs	
unknown:	2
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_283383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
G__inference_embedding_3_layer_call_and_return_conditional_losses_283400

inputs	*
embedding_lookup_283394:	
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_283394inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283394*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283394*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


,__inference_embedding_3_layer_call_fn_283811

inputs	
unknown:	
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_283400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ð
G__inference_embedding_2_layer_call_and_return_conditional_losses_283804

inputs	*
embedding_lookup_283792:	2
identity¢embedding_lookup¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpµ
embedding_lookupResourceGatherembedding_lookup_283792inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283792*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283792*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_283792*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¤
NoOpNoOp^embedding_lookupI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¥
G__inference_embedding_3_layer_call_and_return_conditional_losses_283820

inputs	*
embedding_lookup_283814:	
identity¢embedding_lookupµ
embedding_lookupResourceGatherembedding_lookup_283814inputs*
Tindices0	**
_class 
loc:@embedding_lookup/283814*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/283814*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_embedding_layer_call_fn_283745

inputs	
unknown:	¯2
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_283343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
;

__inference__traced_save_283940
file_prefixC
?savev2_recommender_net_embedding_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_1_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_2_embeddings_read_readvariableopE
Asavev2_recommender_net_embedding_3_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopJ
Fsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopL
Hsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ï
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¡
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0?savev2_recommender_net_embedding_embeddings_read_readvariableopAsavev2_recommender_net_embedding_1_embeddings_read_readvariableopAsavev2_recommender_net_embedding_2_embeddings_read_readvariableopAsavev2_recommender_net_embedding_3_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_m_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_recommender_net_embedding_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_1_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_2_embeddings_v_read_readvariableopHsavev2_adam_recommender_net_embedding_3_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*·
_input_shapes¥
¢: :	¯2:	¯:	2:	: : : : : : : : : : : : : :	¯2:	¯:	2:	:	¯2:	¯:	2:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	¯2:%!

_output_shapes
:	¯:%!

_output_shapes
:	2:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	¯2:%!

_output_shapes
:	¯:%!

_output_shapes
:	2:%!

_output_shapes
:	:%!

_output_shapes
:	¯2:%!

_output_shapes
:	¯:%!

_output_shapes
:	2:%!

_output_shapes
:	:

_output_shapes
: 
Îg
Ì
"__inference__traced_restore_284025
file_prefixH
5assignvariableop_recommender_net_embedding_embeddings:	¯2L
9assignvariableop_1_recommender_net_embedding_1_embeddings:	¯L
9assignvariableop_2_recommender_net_embedding_2_embeddings:	2L
9assignvariableop_3_recommender_net_embedding_3_embeddings:	&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: %
assignvariableop_13_total_2: %
assignvariableop_14_count_2: %
assignvariableop_15_total_3: %
assignvariableop_16_count_3: R
?assignvariableop_17_adam_recommender_net_embedding_embeddings_m:	¯2T
Aassignvariableop_18_adam_recommender_net_embedding_1_embeddings_m:	¯T
Aassignvariableop_19_adam_recommender_net_embedding_2_embeddings_m:	2T
Aassignvariableop_20_adam_recommender_net_embedding_3_embeddings_m:	R
?assignvariableop_21_adam_recommender_net_embedding_embeddings_v:	¯2T
Aassignvariableop_22_adam_recommender_net_embedding_1_embeddings_v:	¯T
Aassignvariableop_23_adam_recommender_net_embedding_2_embeddings_v:	2T
Aassignvariableop_24_adam_recommender_net_embedding_3_embeddings_v:	
identity_26¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ò
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPuser_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKuser_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQmovie_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLmovie_bias/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOpAssignVariableOp5assignvariableop_recommender_net_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_1AssignVariableOp9assignvariableop_1_recommender_net_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_2AssignVariableOp9assignvariableop_2_recommender_net_embedding_2_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_recommender_net_embedding_3_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_3Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_3Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_17AssignVariableOp?assignvariableop_17_adam_recommender_net_embedding_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_18AssignVariableOpAassignvariableop_18_adam_recommender_net_embedding_1_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_19AssignVariableOpAassignvariableop_19_adam_recommender_net_embedding_2_embeddings_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_20AssignVariableOpAassignvariableop_20_adam_recommender_net_embedding_3_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_21AssignVariableOp?assignvariableop_21_adam_recommender_net_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_22AssignVariableOpAassignvariableop_22_adam_recommender_net_embedding_1_embeddings_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_23AssignVariableOpAassignvariableop_23_adam_recommender_net_embedding_2_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_24AssignVariableOpAassignvariableop_24_adam_recommender_net_embedding_3_embeddings_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 õ
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: â
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
óa
¯
K__inference_recommender_net_layer_call_and_return_conditional_losses_283595
input_1	#
embedding_283519:	¯2%
embedding_1_283526:	¯%
embedding_2_283533:	2%
embedding_3_283540:	
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp¢Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskð
!embedding/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_283519*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_283343f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_1_283526*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_283360f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_2_283533*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_283383f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskø
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_3_283540*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_3_layer_call_and_return_conditional_losses_283400_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB i
Tensordot/ShapeShape*embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose*embedding/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_2/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_1/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_3/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_283519*
_output_shapes
:	¯2*
dtype0»
7recommender_net/embedding/embeddings/Regularizer/SquareSquareNrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¯2
6recommender_net/embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ú
4recommender_net/embedding/embeddings/Regularizer/SumSum;recommender_net/embedding/embeddings/Regularizer/Square:y:0?recommender_net/embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: {
6recommender_net/embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ü
4recommender_net/embedding/embeddings/Regularizer/mulMul?recommender_net/embedding/embeddings/Regularizer/mul/x:output:0=recommender_net/embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_283533*
_output_shapes
:	2*
dtype0¿
9recommender_net/embedding_2/embeddings/Regularizer/SquareSquarePrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
8recommender_net/embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       à
6recommender_net/embedding_2/embeddings/Regularizer/SumSum=recommender_net/embedding_2/embeddings/Regularizer/Square:y:0Arecommender_net/embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: }
8recommender_net/embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75â
6recommender_net/embedding_2/embeddings/Regularizer/mulMulArecommender_net/embedding_2/embeddings/Regularizer/mul/x:output:0?recommender_net/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallG^recommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpI^recommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2
Frecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOpFrecommender_net/embedding/embeddings/Regularizer/Square/ReadVariableOp2
Hrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOpHrecommender_net/embedding_2/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÿZ
©
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
µ
#
embeddings
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer

*iter

+beta_1

,beta_2
	-decay
.learning_ratembmcmd#mevfvgvh#vi"
	optimizer
<
0
1
2
#3"
trackable_list_wrapper
<
0
1
2
#3"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
Ê
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
0__inference_recommender_net_layer_call_fn_283467
0__inference_recommender_net_layer_call_fn_283626¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Â2¿
K__inference_recommender_net_layer_call_and_return_conditional_losses_283717
K__inference_recommender_net_layer_call_and_return_conditional_losses_283595¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÌBÉ
!__inference__wrapped_model_283317input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
6serving_default"
signature_map
7:5	¯22$recommender_net/embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
/0"
trackable_list_wrapper
­
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_embedding_layer_call_fn_283745¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_embedding_layer_call_and_return_conditional_losses_283760¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
9:7	¯2&recommender_net/embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_1_layer_call_fn_283767¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_embedding_1_layer_call_and_return_conditional_losses_283776¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
9:7	22&recommender_net/embedding_2/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
00"
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_2_layer_call_fn_283789¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_embedding_2_layer_call_and_return_conditional_losses_283804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
9:7	2&recommender_net/embedding_3/embeddings
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_3_layer_call_fn_283811¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_embedding_3_layer_call_and_return_conditional_losses_283820¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
³2°
__inference_loss_fn_0_283831
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_283842
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ËBÈ
$__inference_signature_wrapper_283732input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
/0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
00"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Ototal
	Pcount
Q	variables
R	keras_api"
_tf_keras_metric
^
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api"
_tf_keras_metric
^
	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api"
_tf_keras_metric
^
	]total
	^count
_
_fn_kwargs
`	variables
a	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
O0
P1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
X0
Y1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
<::	¯22+Adam/recommender_net/embedding/embeddings/m
>:<	¯2-Adam/recommender_net/embedding_1/embeddings/m
>:<	22-Adam/recommender_net/embedding_2/embeddings/m
>:<	2-Adam/recommender_net/embedding_3/embeddings/m
<::	¯22+Adam/recommender_net/embedding/embeddings/v
>:<	¯2-Adam/recommender_net/embedding_1/embeddings/v
>:<	22-Adam/recommender_net/embedding_2/embeddings/v
>:<	2-Adam/recommender_net/embedding_3/embeddings/v
!__inference__wrapped_model_283317m#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¢
G__inference_embedding_1_layer_call_and_return_conditional_losses_283776W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
,__inference_embedding_1_layer_call_fn_283767J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¢
G__inference_embedding_2_layer_call_and_return_conditional_losses_283804W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 z
,__inference_embedding_2_layer_call_fn_283789J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ2¢
G__inference_embedding_3_layer_call_and_return_conditional_losses_283820W#+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
,__inference_embedding_3_layer_call_fn_283811J#+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ 
E__inference_embedding_layer_call_and_return_conditional_losses_283760W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 x
*__inference_embedding_layer_call_fn_283745J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ2;
__inference_loss_fn_0_283831¢

¢ 
ª " ;
__inference_loss_fn_1_283842¢

¢ 
ª " ®
K__inference_recommender_net_layer_call_and_return_conditional_losses_283595_#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
K__inference_recommender_net_layer_call_and_return_conditional_losses_283717^#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_recommender_net_layer_call_fn_283467R#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_recommender_net_layer_call_fn_283626Q#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ 
$__inference_signature_wrapper_283732x#;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ