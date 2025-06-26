.class public final synthetic Lkf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lhf2;


# direct methods
.method public constructor <init>(Lhf2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkf2;->e:Lhf2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkf2;->e:Lhf2;

    .line 2
    new-instance v1, Lif2;

    iget-object v2, v0, Lhf2;->a:Lm40;

    iget-object v0, v0, Lhf2;->c:Ljava/util/List;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5
    :cond_0
    invoke-direct {v1, v0}, Lif2;-><init>(Ljava/util/List;)V

    return-object v1
.end method
