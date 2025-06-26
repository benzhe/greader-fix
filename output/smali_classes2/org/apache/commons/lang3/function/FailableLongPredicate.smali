.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongPredicate;
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
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableLongPredicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lgy7;->a:Lgy7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    .line 2
    sget-object v0, Lhy7;->a:Lhy7;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-void
.end method


# virtual methods
.method public abstract and(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract negate()Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/apache/commons/lang3/function/FailableLongPredicate;)Lorg/apache/commons/lang3/function/FailableLongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongPredicate<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract test(J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
