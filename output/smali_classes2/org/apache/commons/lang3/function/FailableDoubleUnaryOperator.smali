.class public interface abstract Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljx7;->a:Ljx7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public abstract andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract applyAsDouble(D)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation
.end method
