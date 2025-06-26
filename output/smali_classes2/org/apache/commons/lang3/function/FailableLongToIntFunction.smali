.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongToIntFunction;
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljy7;->a:Ljy7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;

    return-void
.end method


# virtual methods
.method public abstract applyAsInt(J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
