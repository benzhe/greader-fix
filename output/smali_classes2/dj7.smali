.class public final Ldj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final synthetic e:Lpl7;


# direct methods
.method public constructor <init>(Lpl7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj7;->e:Lpl7;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldj7;->e:Lpl7;

    invoke-interface {v0, p1}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
