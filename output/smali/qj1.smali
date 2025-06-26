.class public final synthetic Lqj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkj1;

.field public final f:Z


# direct methods
.method public constructor <init>(Lkj1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj1;->e:Lkj1;

    iput-boolean p2, p0, Lqj1;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lqj1;->e:Lkj1;

    iget-boolean v1, p0, Lqj1;->f:Z

    .line 1
    iget-object v2, v0, Lkj1;->j:Lek1;

    iget-object v3, v0, Lkj1;->s:Lxl1;

    .line 2
    invoke-interface {v3}, Lxl1;->y5()Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lkj1;->s:Lxl1;

    .line 3
    invoke-interface {v4}, Lxl1;->L3()Ljava/util/Map;

    move-result-object v4

    iget-object v0, v0, Lkj1;->s:Lxl1;

    .line 4
    invoke-interface {v0}, Lxl1;->z4()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-interface {v2, v3, v4, v0, v1}, Lek1;->k(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method
