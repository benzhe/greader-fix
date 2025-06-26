.class public final synthetic Llv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lorg/apache/commons/lang3/concurrent/Memoizer;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv7;->e:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iput-object p2, p0, Llv7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llv7;->e:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iget-object v1, p0, Llv7;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
