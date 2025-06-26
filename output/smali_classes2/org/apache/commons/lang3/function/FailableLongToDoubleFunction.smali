.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongToDoubleFunction;
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

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongToDoubleFunction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Liy7;->a:Liy7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongToDoubleFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongToDoubleFunction;

    return-void
.end method


# virtual methods
.method public abstract applyAsDouble(J)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
