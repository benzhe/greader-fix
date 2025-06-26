.class public final synthetic Ltb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lub2;


# direct methods
.method public constructor <init>(Lub2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb2;->e:Lub2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltb2;->e:Lub2;

    .line 1
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lwb2;->a:Lrb2;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-object v0, Lvb2;->a:Lrb2;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Lyb2;

    invoke-direct {v2, v0, v1}, Lyb2;-><init>(Lub2;Ljava/util/ArrayList;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
