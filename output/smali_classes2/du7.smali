.class public final synthetic Ldu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lorg/apache/commons/lang3/Functions$FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldu7;->e:Lorg/apache/commons/lang3/Functions$FailableCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldu7;->e:Lorg/apache/commons/lang3/Functions$FailableCallable;

    .line 1
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
