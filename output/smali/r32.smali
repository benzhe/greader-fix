.class public final synthetic Lr32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva1;


# instance fields
.field public final e:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr32;->e:Lxw0;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr32;->e:Lxw0;

    .line 2
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    check-cast v0, Lww0;

    invoke-virtual {v0}, Lww0;->O()V

    :cond_0
    return-void
.end method
