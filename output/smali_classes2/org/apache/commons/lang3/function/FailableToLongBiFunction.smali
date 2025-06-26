.class public interface abstract Lorg/apache/commons/lang3/function/FailableToLongBiFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableToLongBiFunction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lzy7;->a:Lzy7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableToLongBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToLongBiFunction;

    return-void
.end method


# virtual methods
.method public abstract applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
