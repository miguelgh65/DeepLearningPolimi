üÌ
­
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-0-g919f693420e8¸ß
y
Hidden1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameHidden1/kernel
r
"Hidden1/kernel/Read/ReadVariableOpReadVariableOpHidden1/kernel*
_output_shapes
:	*
dtype0
q
Hidden1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameHidden1/bias
j
 Hidden1/bias/Read/ReadVariableOpReadVariableOpHidden1/bias*
_output_shapes	
:*
dtype0
z
Hidden2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameHidden2/kernel
s
"Hidden2/kernel/Read/ReadVariableOpReadVariableOpHidden2/kernel* 
_output_shapes
:
*
dtype0
q
Hidden2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameHidden2/bias
j
 Hidden2/bias/Read/ReadVariableOpReadVariableOpHidden2/bias*
_output_shapes	
:*
dtype0
y
Hidden3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_nameHidden3/kernel
r
"Hidden3/kernel/Read/ReadVariableOpReadVariableOpHidden3/kernel*
_output_shapes
:	@*
dtype0
p
Hidden3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameHidden3/bias
i
 Hidden3/bias/Read/ReadVariableOpReadVariableOpHidden3/bias*
_output_shapes
:@*
dtype0
v
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_nameOutput/kernel
o
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes

:@*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:*
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

Adam/Hidden1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/Hidden1/kernel/m

)Adam/Hidden1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden1/kernel/m*
_output_shapes
:	*
dtype0

Adam/Hidden1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Hidden1/bias/m
x
'Adam/Hidden1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden1/bias/m*
_output_shapes	
:*
dtype0

Adam/Hidden2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/Hidden2/kernel/m

)Adam/Hidden2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden2/kernel/m* 
_output_shapes
:
*
dtype0

Adam/Hidden2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Hidden2/bias/m
x
'Adam/Hidden2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden2/bias/m*
_output_shapes	
:*
dtype0

Adam/Hidden3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/Hidden3/kernel/m

)Adam/Hidden3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden3/kernel/m*
_output_shapes
:	@*
dtype0
~
Adam/Hidden3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Hidden3/bias/m
w
'Adam/Hidden3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden3/bias/m*
_output_shapes
:@*
dtype0

Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/Output/kernel/m
}
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes

:@*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:*
dtype0

Adam/Hidden1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/Hidden1/kernel/v

)Adam/Hidden1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden1/kernel/v*
_output_shapes
:	*
dtype0

Adam/Hidden1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Hidden1/bias/v
x
'Adam/Hidden1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden1/bias/v*
_output_shapes	
:*
dtype0

Adam/Hidden2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/Hidden2/kernel/v

)Adam/Hidden2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden2/kernel/v* 
_output_shapes
:
*
dtype0

Adam/Hidden2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/Hidden2/bias/v
x
'Adam/Hidden2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden2/bias/v*
_output_shapes	
:*
dtype0

Adam/Hidden3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/Hidden3/kernel/v

)Adam/Hidden3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden3/kernel/v*
_output_shapes
:	@*
dtype0
~
Adam/Hidden3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/Hidden3/bias/v
w
'Adam/Hidden3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden3/bias/v*
_output_shapes
:@*
dtype0

Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/Output/kernel/v
}
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes

:@*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ö-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*±-
value§-B¤- B-

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
 
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
Ð
$iter

%beta_1

&beta_2
	'decay
(learning_ratemMmNmOmPmQmRmSmTvUvVvWvXvYvZv[v\
8
0
1
2
3
4
5
6
7
 
8
0
1
2
3
4
5
6
7
­
)non_trainable_variables
	variables
regularization_losses

*layers
	trainable_variables
+metrics
,layer_regularization_losses
-layer_metrics
 
ZX
VARIABLE_VALUEHidden1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEHidden1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
.non_trainable_variables
regularization_losses
	variables

/layers
trainable_variables
0metrics
1layer_regularization_losses
2layer_metrics
ZX
VARIABLE_VALUEHidden2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEHidden2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
3non_trainable_variables
regularization_losses
	variables

4layers
trainable_variables
5metrics
6layer_regularization_losses
7layer_metrics
ZX
VARIABLE_VALUEHidden3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEHidden3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
8non_trainable_variables
regularization_losses
	variables

9layers
trainable_variables
:metrics
;layer_regularization_losses
<layer_metrics
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
=non_trainable_variables
 regularization_losses
!	variables

>layers
"trainable_variables
?metrics
@layer_regularization_losses
Alayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

B0
C1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Dtotal
	Ecount
F	variables
G	keras_api
D
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

F	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

K	variables
}{
VARIABLE_VALUEAdam/Hidden1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Hidden2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Hidden3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Hidden1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Hidden2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Hidden3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Hidden3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
x
serving_default_InputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
µ
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputHidden1/kernelHidden1/biasHidden2/kernelHidden2/biasHidden3/kernelHidden3/biasOutput/kernelOutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_77070
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"Hidden1/kernel/Read/ReadVariableOp Hidden1/bias/Read/ReadVariableOp"Hidden2/kernel/Read/ReadVariableOp Hidden2/bias/Read/ReadVariableOp"Hidden3/kernel/Read/ReadVariableOp Hidden3/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/Hidden1/kernel/m/Read/ReadVariableOp'Adam/Hidden1/bias/m/Read/ReadVariableOp)Adam/Hidden2/kernel/m/Read/ReadVariableOp'Adam/Hidden2/bias/m/Read/ReadVariableOp)Adam/Hidden3/kernel/m/Read/ReadVariableOp'Adam/Hidden3/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp)Adam/Hidden1/kernel/v/Read/ReadVariableOp'Adam/Hidden1/bias/v/Read/ReadVariableOp)Adam/Hidden2/kernel/v/Read/ReadVariableOp'Adam/Hidden2/bias/v/Read/ReadVariableOp)Adam/Hidden3/kernel/v/Read/ReadVariableOp'Adam/Hidden3/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_77375
í
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden1/kernelHidden1/biasHidden2/kernelHidden2/biasHidden3/kernelHidden3/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Hidden1/kernel/mAdam/Hidden1/bias/mAdam/Hidden2/kernel/mAdam/Hidden2/bias/mAdam/Hidden3/kernel/mAdam/Hidden3/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/Hidden1/kernel/vAdam/Hidden1/bias/vAdam/Hidden2/kernel/vAdam/Hidden2/bias/vAdam/Hidden3/kernel/vAdam/Hidden3/bias/vAdam/Output/kernel/vAdam/Output/bias/v*-
Tin&
$2"*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_77484¿Ü
æ&
±
H__inference_default_model_layer_call_and_return_conditional_losses_77143

inputs9
&hidden1_matmul_readvariableop_resource:	6
'hidden1_biasadd_readvariableop_resource:	:
&hidden2_matmul_readvariableop_resource:
6
'hidden2_biasadd_readvariableop_resource:	9
&hidden3_matmul_readvariableop_resource:	@5
'hidden3_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identity¢Hidden1/BiasAdd/ReadVariableOp¢Hidden1/MatMul/ReadVariableOp¢Hidden2/BiasAdd/ReadVariableOp¢Hidden2/MatMul/ReadVariableOp¢Hidden3/BiasAdd/ReadVariableOp¢Hidden3/MatMul/ReadVariableOp¢Output/BiasAdd/ReadVariableOp¢Output/MatMul/ReadVariableOp¦
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
Hidden1/MatMul/ReadVariableOp
Hidden1/MatMulMatMulinputs%Hidden1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/MatMul¥
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
Hidden1/BiasAdd/ReadVariableOp¢
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/BiasAddq
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/Relu§
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
Hidden2/MatMul/ReadVariableOp 
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/MatMul¥
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
Hidden2/BiasAdd/ReadVariableOp¢
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/BiasAddq
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/Relu¦
Hidden3/MatMul/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
Hidden3/MatMul/ReadVariableOp
Hidden3/MatMulMatMulHidden2/Relu:activations:0%Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/MatMul¤
Hidden3/BiasAdd/ReadVariableOpReadVariableOp'hidden3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Hidden3/BiasAdd/ReadVariableOp¡
Hidden3/BiasAddBiasAddHidden3/MatMul:product:0&Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/BiasAddp
Hidden3/ReluReluHidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/Relu¢
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
Output/MatMul/ReadVariableOp
Output/MatMulMatMulHidden3/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/MatMul¡
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOp
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/BiasAddr
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÐ
NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Hidden3/BiasAdd/ReadVariableOp^Hidden3/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2@
Hidden3/BiasAdd/ReadVariableOpHidden3/BiasAdd/ReadVariableOp2>
Hidden3/MatMul/ReadVariableOpHidden3/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ô
B__inference_Hidden3_layer_call_and_return_conditional_losses_77234

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë

&__inference_Output_layer_call_fn_77243

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_768402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
æ&
±
H__inference_default_model_layer_call_and_return_conditional_losses_77174

inputs9
&hidden1_matmul_readvariableop_resource:	6
'hidden1_biasadd_readvariableop_resource:	:
&hidden2_matmul_readvariableop_resource:
6
'hidden2_biasadd_readvariableop_resource:	9
&hidden3_matmul_readvariableop_resource:	@5
'hidden3_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identity¢Hidden1/BiasAdd/ReadVariableOp¢Hidden1/MatMul/ReadVariableOp¢Hidden2/BiasAdd/ReadVariableOp¢Hidden2/MatMul/ReadVariableOp¢Hidden3/BiasAdd/ReadVariableOp¢Hidden3/MatMul/ReadVariableOp¢Output/BiasAdd/ReadVariableOp¢Output/MatMul/ReadVariableOp¦
Hidden1/MatMul/ReadVariableOpReadVariableOp&hidden1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
Hidden1/MatMul/ReadVariableOp
Hidden1/MatMulMatMulinputs%Hidden1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/MatMul¥
Hidden1/BiasAdd/ReadVariableOpReadVariableOp'hidden1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
Hidden1/BiasAdd/ReadVariableOp¢
Hidden1/BiasAddBiasAddHidden1/MatMul:product:0&Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/BiasAddq
Hidden1/ReluReluHidden1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden1/Relu§
Hidden2/MatMul/ReadVariableOpReadVariableOp&hidden2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
Hidden2/MatMul/ReadVariableOp 
Hidden2/MatMulMatMulHidden1/Relu:activations:0%Hidden2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/MatMul¥
Hidden2/BiasAdd/ReadVariableOpReadVariableOp'hidden2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
Hidden2/BiasAdd/ReadVariableOp¢
Hidden2/BiasAddBiasAddHidden2/MatMul:product:0&Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/BiasAddq
Hidden2/ReluReluHidden2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Hidden2/Relu¦
Hidden3/MatMul/ReadVariableOpReadVariableOp&hidden3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
Hidden3/MatMul/ReadVariableOp
Hidden3/MatMulMatMulHidden2/Relu:activations:0%Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/MatMul¤
Hidden3/BiasAdd/ReadVariableOpReadVariableOp'hidden3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
Hidden3/BiasAdd/ReadVariableOp¡
Hidden3/BiasAddBiasAddHidden3/MatMul:product:0&Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/BiasAddp
Hidden3/ReluReluHidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Hidden3/Relu¢
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
Output/MatMul/ReadVariableOp
Output/MatMulMatMulHidden3/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/MatMul¡
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Output/BiasAdd/ReadVariableOp
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Output/BiasAddr
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÐ
NoOpNoOp^Hidden1/BiasAdd/ReadVariableOp^Hidden1/MatMul/ReadVariableOp^Hidden2/BiasAdd/ReadVariableOp^Hidden2/MatMul/ReadVariableOp^Hidden3/BiasAdd/ReadVariableOp^Hidden3/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2@
Hidden1/BiasAdd/ReadVariableOpHidden1/BiasAdd/ReadVariableOp2>
Hidden1/MatMul/ReadVariableOpHidden1/MatMul/ReadVariableOp2@
Hidden2/BiasAdd/ReadVariableOpHidden2/BiasAdd/ReadVariableOp2>
Hidden2/MatMul/ReadVariableOpHidden2/MatMul/ReadVariableOp2@
Hidden3/BiasAdd/ReadVariableOpHidden3/BiasAdd/ReadVariableOp2>
Hidden3/MatMul/ReadVariableOpHidden3/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý1
è
 __inference__wrapped_model_76772	
inputG
4default_model_hidden1_matmul_readvariableop_resource:	D
5default_model_hidden1_biasadd_readvariableop_resource:	H
4default_model_hidden2_matmul_readvariableop_resource:
D
5default_model_hidden2_biasadd_readvariableop_resource:	G
4default_model_hidden3_matmul_readvariableop_resource:	@C
5default_model_hidden3_biasadd_readvariableop_resource:@E
3default_model_output_matmul_readvariableop_resource:@B
4default_model_output_biasadd_readvariableop_resource:
identity¢,default_model/Hidden1/BiasAdd/ReadVariableOp¢+default_model/Hidden1/MatMul/ReadVariableOp¢,default_model/Hidden2/BiasAdd/ReadVariableOp¢+default_model/Hidden2/MatMul/ReadVariableOp¢,default_model/Hidden3/BiasAdd/ReadVariableOp¢+default_model/Hidden3/MatMul/ReadVariableOp¢+default_model/Output/BiasAdd/ReadVariableOp¢*default_model/Output/MatMul/ReadVariableOpÐ
+default_model/Hidden1/MatMul/ReadVariableOpReadVariableOp4default_model_hidden1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02-
+default_model/Hidden1/MatMul/ReadVariableOpµ
default_model/Hidden1/MatMulMatMulinput3default_model/Hidden1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden1/MatMulÏ
,default_model/Hidden1/BiasAdd/ReadVariableOpReadVariableOp5default_model_hidden1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,default_model/Hidden1/BiasAdd/ReadVariableOpÚ
default_model/Hidden1/BiasAddBiasAdd&default_model/Hidden1/MatMul:product:04default_model/Hidden1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden1/BiasAdd
default_model/Hidden1/ReluRelu&default_model/Hidden1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden1/ReluÑ
+default_model/Hidden2/MatMul/ReadVariableOpReadVariableOp4default_model_hidden2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+default_model/Hidden2/MatMul/ReadVariableOpØ
default_model/Hidden2/MatMulMatMul(default_model/Hidden1/Relu:activations:03default_model/Hidden2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden2/MatMulÏ
,default_model/Hidden2/BiasAdd/ReadVariableOpReadVariableOp5default_model_hidden2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,default_model/Hidden2/BiasAdd/ReadVariableOpÚ
default_model/Hidden2/BiasAddBiasAdd&default_model/Hidden2/MatMul:product:04default_model/Hidden2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden2/BiasAdd
default_model/Hidden2/ReluRelu&default_model/Hidden2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Hidden2/ReluÐ
+default_model/Hidden3/MatMul/ReadVariableOpReadVariableOp4default_model_hidden3_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02-
+default_model/Hidden3/MatMul/ReadVariableOp×
default_model/Hidden3/MatMulMatMul(default_model/Hidden2/Relu:activations:03default_model/Hidden3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
default_model/Hidden3/MatMulÎ
,default_model/Hidden3/BiasAdd/ReadVariableOpReadVariableOp5default_model_hidden3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,default_model/Hidden3/BiasAdd/ReadVariableOpÙ
default_model/Hidden3/BiasAddBiasAdd&default_model/Hidden3/MatMul:product:04default_model/Hidden3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
default_model/Hidden3/BiasAdd
default_model/Hidden3/ReluRelu&default_model/Hidden3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
default_model/Hidden3/ReluÌ
*default_model/Output/MatMul/ReadVariableOpReadVariableOp3default_model_output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*default_model/Output/MatMul/ReadVariableOpÔ
default_model/Output/MatMulMatMul(default_model/Hidden3/Relu:activations:02default_model/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Output/MatMulË
+default_model/Output/BiasAdd/ReadVariableOpReadVariableOp4default_model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+default_model/Output/BiasAdd/ReadVariableOpÕ
default_model/Output/BiasAddBiasAdd%default_model/Output/MatMul:product:03default_model/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
default_model/Output/BiasAdd
IdentityIdentity%default_model/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÀ
NoOpNoOp-^default_model/Hidden1/BiasAdd/ReadVariableOp,^default_model/Hidden1/MatMul/ReadVariableOp-^default_model/Hidden2/BiasAdd/ReadVariableOp,^default_model/Hidden2/MatMul/ReadVariableOp-^default_model/Hidden3/BiasAdd/ReadVariableOp,^default_model/Hidden3/MatMul/ReadVariableOp,^default_model/Output/BiasAdd/ReadVariableOp+^default_model/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2\
,default_model/Hidden1/BiasAdd/ReadVariableOp,default_model/Hidden1/BiasAdd/ReadVariableOp2Z
+default_model/Hidden1/MatMul/ReadVariableOp+default_model/Hidden1/MatMul/ReadVariableOp2\
,default_model/Hidden2/BiasAdd/ReadVariableOp,default_model/Hidden2/BiasAdd/ReadVariableOp2Z
+default_model/Hidden2/MatMul/ReadVariableOp+default_model/Hidden2/MatMul/ReadVariableOp2\
,default_model/Hidden3/BiasAdd/ReadVariableOp,default_model/Hidden3/BiasAdd/ReadVariableOp2Z
+default_model/Hidden3/MatMul/ReadVariableOp+default_model/Hidden3/MatMul/ReadVariableOp2Z
+default_model/Output/BiasAdd/ReadVariableOp+default_model/Output/BiasAdd/ReadVariableOp2X
*default_model/Output/MatMul/ReadVariableOp*default_model/Output/MatMul/ReadVariableOp:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput
H
¡
__inference__traced_save_77375
file_prefix-
)savev2_hidden1_kernel_read_readvariableop+
'savev2_hidden1_bias_read_readvariableop-
)savev2_hidden2_kernel_read_readvariableop+
'savev2_hidden2_bias_read_readvariableop-
)savev2_hidden3_kernel_read_readvariableop+
'savev2_hidden3_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_hidden1_kernel_m_read_readvariableop2
.savev2_adam_hidden1_bias_m_read_readvariableop4
0savev2_adam_hidden2_kernel_m_read_readvariableop2
.savev2_adam_hidden2_bias_m_read_readvariableop4
0savev2_adam_hidden3_kernel_m_read_readvariableop2
.savev2_adam_hidden3_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop4
0savev2_adam_hidden1_kernel_v_read_readvariableop2
.savev2_adam_hidden1_bias_v_read_readvariableop4
0savev2_adam_hidden2_kernel_v_read_readvariableop2
.savev2_adam_hidden2_bias_v_read_readvariableop4
0savev2_adam_hidden3_kernel_v_read_readvariableop2
.savev2_adam_hidden3_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÆ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_hidden1_kernel_read_readvariableop'savev2_hidden1_bias_read_readvariableop)savev2_hidden2_kernel_read_readvariableop'savev2_hidden2_bias_read_readvariableop)savev2_hidden3_kernel_read_readvariableop'savev2_hidden3_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_hidden1_kernel_m_read_readvariableop.savev2_adam_hidden1_bias_m_read_readvariableop0savev2_adam_hidden2_kernel_m_read_readvariableop.savev2_adam_hidden2_bias_m_read_readvariableop0savev2_adam_hidden3_kernel_m_read_readvariableop.savev2_adam_hidden3_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop0savev2_adam_hidden1_kernel_v_read_readvariableop.savev2_adam_hidden1_bias_v_read_readvariableop0savev2_adam_hidden2_kernel_v_read_readvariableop.savev2_adam_hidden2_bias_v_read_readvariableop0savev2_adam_hidden3_kernel_v_read_readvariableop.savev2_adam_hidden3_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*ý
_input_shapesë
è: :	::
::	@:@:@:: : : : : : : : : :	::
::	@:@:@::	::
::	@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::	
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
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::"

_output_shapes
: 
Æ
é
H__inference_default_model_layer_call_and_return_conditional_losses_77017	
input 
hidden1_76996:	
hidden1_76998:	!
hidden2_77001:

hidden2_77003:	 
hidden3_77006:	@
hidden3_77008:@
output_77011:@
output_77013:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Output/StatefulPartitionedCall
Hidden1/StatefulPartitionedCallStatefulPartitionedCallinputhidden1_76996hidden1_76998*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden1_layer_call_and_return_conditional_losses_767902!
Hidden1/StatefulPartitionedCall¯
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_77001hidden2_77003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden2_layer_call_and_return_conditional_losses_768072!
Hidden2/StatefulPartitionedCall®
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_77006hidden3_77008*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden3_layer_call_and_return_conditional_losses_768242!
Hidden3/StatefulPartitionedCall©
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0output_77011output_77013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_768402 
Output/StatefulPartitionedCall
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÕ
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput
¡
½
!__inference__traced_restore_77484
file_prefix2
assignvariableop_hidden1_kernel:	.
assignvariableop_1_hidden1_bias:	5
!assignvariableop_2_hidden2_kernel:
.
assignvariableop_3_hidden2_bias:	4
!assignvariableop_4_hidden3_kernel:	@-
assignvariableop_5_hidden3_bias:@2
 assignvariableop_6_output_kernel:@,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: <
)assignvariableop_17_adam_hidden1_kernel_m:	6
'assignvariableop_18_adam_hidden1_bias_m:	=
)assignvariableop_19_adam_hidden2_kernel_m:
6
'assignvariableop_20_adam_hidden2_bias_m:	<
)assignvariableop_21_adam_hidden3_kernel_m:	@5
'assignvariableop_22_adam_hidden3_bias_m:@:
(assignvariableop_23_adam_output_kernel_m:@4
&assignvariableop_24_adam_output_bias_m:<
)assignvariableop_25_adam_hidden1_kernel_v:	6
'assignvariableop_26_adam_hidden1_bias_v:	=
)assignvariableop_27_adam_hidden2_kernel_v:
6
'assignvariableop_28_adam_hidden2_bias_v:	<
)assignvariableop_29_adam_hidden3_kernel_v:	@5
'assignvariableop_30_adam_hidden3_bias_v:@:
(assignvariableop_31_adam_output_kernel_v:@4
&assignvariableop_32_adam_output_bias_v:
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ì
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÒ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_hidden1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_hidden1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_hidden2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_hidden2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¦
AssignVariableOp_4AssignVariableOp!assignvariableop_4_hidden3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¤
AssignVariableOp_5AssignVariableOpassignvariableop_5_hidden3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¥
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¡
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_hidden1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¯
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_hidden1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19±
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_hidden2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¯
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_hidden2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21±
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_hidden3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¯
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_hidden3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24®
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25±
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_hidden1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¯
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_hidden1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_hidden2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¯
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_hidden2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29±
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_hidden3_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¯
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_hidden3_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31°
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32®
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp´
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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

õ
B__inference_Hidden1_layer_call_and_return_conditional_losses_77194

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô

'__inference_Hidden2_layer_call_fn_77203

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden2_layer_call_and_return_conditional_losses_768072
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ	
·
#__inference_signature_wrapper_77070	
input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_767722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput
Æ
é
H__inference_default_model_layer_call_and_return_conditional_losses_77041	
input 
hidden1_77020:	
hidden1_77022:	!
hidden2_77025:

hidden2_77027:	 
hidden3_77030:	@
hidden3_77032:@
output_77035:@
output_77037:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Output/StatefulPartitionedCall
Hidden1/StatefulPartitionedCallStatefulPartitionedCallinputhidden1_77020hidden1_77022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden1_layer_call_and_return_conditional_losses_767902!
Hidden1/StatefulPartitionedCall¯
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_77025hidden2_77027*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden2_layer_call_and_return_conditional_losses_768072!
Hidden2/StatefulPartitionedCall®
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_77030hidden3_77032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden3_layer_call_and_return_conditional_losses_768242!
Hidden3/StatefulPartitionedCall©
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0output_77035output_77037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_768402 
Output/StatefulPartitionedCall
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÕ
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput
É
ê
H__inference_default_model_layer_call_and_return_conditional_losses_76953

inputs 
hidden1_76932:	
hidden1_76934:	!
hidden2_76937:

hidden2_76939:	 
hidden3_76942:	@
hidden3_76944:@
output_76947:@
output_76949:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Output/StatefulPartitionedCall
Hidden1/StatefulPartitionedCallStatefulPartitionedCallinputshidden1_76932hidden1_76934*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden1_layer_call_and_return_conditional_losses_767902!
Hidden1/StatefulPartitionedCall¯
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_76937hidden2_76939*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden2_layer_call_and_return_conditional_losses_768072!
Hidden2/StatefulPartitionedCall®
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_76942hidden3_76944*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden3_layer_call_and_return_conditional_losses_768242!
Hidden3/StatefulPartitionedCall©
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0output_76947output_76949*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_768402 
Output/StatefulPartitionedCall
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÕ
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

õ
B__inference_Hidden1_layer_call_and_return_conditional_losses_76790

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Á
-__inference_default_model_layer_call_fn_76866	
input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_default_model_layer_call_and_return_conditional_losses_768472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput

ô
B__inference_Hidden3_layer_call_and_return_conditional_losses_76824

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ò
A__inference_Output_layer_call_and_return_conditional_losses_76840

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ

'__inference_Hidden1_layer_call_fn_77183

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden1_layer_call_and_return_conditional_losses_767902
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û	
Â
-__inference_default_model_layer_call_fn_77112

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_default_model_layer_call_and_return_conditional_losses_769532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø	
Á
-__inference_default_model_layer_call_fn_76993	
input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_default_model_layer_call_and_return_conditional_losses_769532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nameInput

ö
B__inference_Hidden2_layer_call_and_return_conditional_losses_77214

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
B__inference_Hidden2_layer_call_and_return_conditional_losses_76807

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û	
Â
-__inference_default_model_layer_call_fn_77091

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_default_model_layer_call_and_return_conditional_losses_768472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ò
A__inference_Output_layer_call_and_return_conditional_losses_77253

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
É
ê
H__inference_default_model_layer_call_and_return_conditional_losses_76847

inputs 
hidden1_76791:	
hidden1_76793:	!
hidden2_76808:

hidden2_76810:	 
hidden3_76825:	@
hidden3_76827:@
output_76841:@
output_76843:
identity¢Hidden1/StatefulPartitionedCall¢Hidden2/StatefulPartitionedCall¢Hidden3/StatefulPartitionedCall¢Output/StatefulPartitionedCall
Hidden1/StatefulPartitionedCallStatefulPartitionedCallinputshidden1_76791hidden1_76793*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden1_layer_call_and_return_conditional_losses_767902!
Hidden1/StatefulPartitionedCall¯
Hidden2/StatefulPartitionedCallStatefulPartitionedCall(Hidden1/StatefulPartitionedCall:output:0hidden2_76808hidden2_76810*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden2_layer_call_and_return_conditional_losses_768072!
Hidden2/StatefulPartitionedCall®
Hidden3/StatefulPartitionedCallStatefulPartitionedCall(Hidden2/StatefulPartitionedCall:output:0hidden3_76825hidden3_76827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden3_layer_call_and_return_conditional_losses_768242!
Hidden3/StatefulPartitionedCall©
Output/StatefulPartitionedCallStatefulPartitionedCall(Hidden3/StatefulPartitionedCall:output:0output_76841output_76843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_768402 
Output/StatefulPartitionedCall
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÕ
NoOpNoOp ^Hidden1/StatefulPartitionedCall ^Hidden2/StatefulPartitionedCall ^Hidden3/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
Hidden1/StatefulPartitionedCallHidden1/StatefulPartitionedCall2B
Hidden2/StatefulPartitionedCallHidden2/StatefulPartitionedCall2B
Hidden3/StatefulPartitionedCallHidden3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð

'__inference_Hidden3_layer_call_fn_77223

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Hidden3_layer_call_and_return_conditional_losses_768242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¥
serving_default
7
Input.
serving_default_Input:0ÿÿÿÿÿÿÿÿÿ:
Output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¶]

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
]__call__
^_default_save_signature
*_&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
»

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
$iter

%beta_1

&beta_2
	'decay
(learning_ratemMmNmOmPmQmRmSmTvUvVvWvXvYvZv[v\"
	optimizer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
Ê
)non_trainable_variables
	variables
regularization_losses

*layers
	trainable_variables
+metrics
,layer_regularization_losses
-layer_metrics
]__call__
^_default_save_signature
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
,
hserving_default"
signature_map
!:	2Hidden1/kernel
:2Hidden1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
.non_trainable_variables
regularization_losses
	variables

/layers
trainable_variables
0metrics
1layer_regularization_losses
2layer_metrics
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
": 
2Hidden2/kernel
:2Hidden2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
3non_trainable_variables
regularization_losses
	variables

4layers
trainable_variables
5metrics
6layer_regularization_losses
7layer_metrics
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
!:	@2Hidden3/kernel
:@2Hidden3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
8non_trainable_variables
regularization_losses
	variables

9layers
trainable_variables
:metrics
;layer_regularization_losses
<layer_metrics
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
:@2Output/kernel
:2Output/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
=non_trainable_variables
 regularization_losses
!	variables

>layers
"trainable_variables
?metrics
@layer_regularization_losses
Alayer_metrics
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
B0
C1"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Dtotal
	Ecount
F	variables
G	keras_api"
_tf_keras_metric
^
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
H0
I1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
&:$	2Adam/Hidden1/kernel/m
 :2Adam/Hidden1/bias/m
':%
2Adam/Hidden2/kernel/m
 :2Adam/Hidden2/bias/m
&:$	@2Adam/Hidden3/kernel/m
:@2Adam/Hidden3/bias/m
$:"@2Adam/Output/kernel/m
:2Adam/Output/bias/m
&:$	2Adam/Hidden1/kernel/v
 :2Adam/Hidden1/bias/v
':%
2Adam/Hidden2/kernel/v
 :2Adam/Hidden2/bias/v
&:$	@2Adam/Hidden3/kernel/v
:@2Adam/Hidden3/bias/v
$:"@2Adam/Output/kernel/v
:2Adam/Output/bias/v
2ÿ
-__inference_default_model_layer_call_fn_76866
-__inference_default_model_layer_call_fn_77091
-__inference_default_model_layer_call_fn_77112
-__inference_default_model_layer_call_fn_76993À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÉBÆ
 __inference__wrapped_model_76772Input"
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
î2ë
H__inference_default_model_layer_call_and_return_conditional_losses_77143
H__inference_default_model_layer_call_and_return_conditional_losses_77174
H__inference_default_model_layer_call_and_return_conditional_losses_77017
H__inference_default_model_layer_call_and_return_conditional_losses_77041À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_Hidden1_layer_call_fn_77183¢
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
ì2é
B__inference_Hidden1_layer_call_and_return_conditional_losses_77194¢
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
Ñ2Î
'__inference_Hidden2_layer_call_fn_77203¢
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
ì2é
B__inference_Hidden2_layer_call_and_return_conditional_losses_77214¢
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
Ñ2Î
'__inference_Hidden3_layer_call_fn_77223¢
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
ì2é
B__inference_Hidden3_layer_call_and_return_conditional_losses_77234¢
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
Ð2Í
&__inference_Output_layer_call_fn_77243¢
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
ë2è
A__inference_Output_layer_call_and_return_conditional_losses_77253¢
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
ÈBÅ
#__inference_signature_wrapper_77070Input"
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
 £
B__inference_Hidden1_layer_call_and_return_conditional_losses_77194]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_Hidden1_layer_call_fn_77183P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_Hidden2_layer_call_and_return_conditional_losses_77214^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_Hidden2_layer_call_fn_77203Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
B__inference_Hidden3_layer_call_and_return_conditional_losses_77234]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 {
'__inference_Hidden3_layer_call_fn_77223P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¡
A__inference_Output_layer_call_and_return_conditional_losses_77253\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
&__inference_Output_layer_call_fn_77243O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ
 __inference__wrapped_model_76772k.¢+
$¢!

Inputÿÿÿÿÿÿÿÿÿ
ª "/ª,
*
Output 
Outputÿÿÿÿÿÿÿÿÿµ
H__inference_default_model_layer_call_and_return_conditional_losses_77017i6¢3
,¢)

Inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
H__inference_default_model_layer_call_and_return_conditional_losses_77041i6¢3
,¢)

Inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
H__inference_default_model_layer_call_and_return_conditional_losses_77143j7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
H__inference_default_model_layer_call_and_return_conditional_losses_77174j7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_default_model_layer_call_fn_76866\6¢3
,¢)

Inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_default_model_layer_call_fn_76993\6¢3
,¢)

Inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_default_model_layer_call_fn_77091]7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_default_model_layer_call_fn_77112]7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
#__inference_signature_wrapper_77070t7¢4
¢ 
-ª*
(
Input
Inputÿÿÿÿÿÿÿÿÿ"/ª,
*
Output 
Outputÿÿÿÿÿÿÿÿÿ