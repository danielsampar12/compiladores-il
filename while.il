.assembly extern mscorlib {}
.assembly _codigo{}
.module _codigo.exe

.class public _codigo{
  .method static public void _principal(){
   .entrypoint
   
   //
   .locals (int64 i, int64 max)
   ldc.i8 1
   stloc i
   ldc.i8 10
   stloc max

L1:ldloc i
   ldloc max
   clt
   brfalse L2
 
   ldloc i
   call void  [mscorlib]System.Console::Write(int64)

   ldstr " "
   call void  [mscorlib]System.Console::Write(string)

   ldloc i
   ldc.i8 1
   add
   stloc i
   br L1
   

L2:ret


   //

   ret
  }
}

