.class public final Lhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lnc;

.field public final synthetic f:Lf4;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lic$a;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroidx/fragment/app/Fragment;

.field public final synthetic l:Landroidx/fragment/app/Fragment;

.field public final synthetic m:Z

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lnc;Lf4;Ljava/lang/Object;Lic$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhc;->e:Lnc;

    iput-object p2, p0, Lhc;->f:Lf4;

    iput-object p3, p0, Lhc;->g:Ljava/lang/Object;

    iput-object p4, p0, Lhc;->h:Lic$a;

    iput-object p5, p0, Lhc;->i:Ljava/util/ArrayList;

    iput-object p6, p0, Lhc;->j:Landroid/view/View;

    iput-object p7, p0, Lhc;->k:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Lhc;->l:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Lhc;->m:Z

    iput-object p10, p0, Lhc;->n:Ljava/util/ArrayList;

    iput-object p11, p0, Lhc;->o:Ljava/lang/Object;

    iput-object p12, p0, Lhc;->p:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhc;->e:Lnc;

    iget-object v1, p0, Lhc;->f:Lf4;

    iget-object v2, p0, Lhc;->g:Ljava/lang/Object;

    iget-object v3, p0, Lhc;->h:Lic$a;

    invoke-static {v0, v1, v2, v3}, Lic;->e(Lnc;Lf4;Ljava/lang/Object;Lic$a;)Lf4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lhc;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lf4;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lhc;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lhc;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lhc;->k:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lhc;->l:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Lhc;->m:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lic;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Z)V

    .line 5
    iget-object v1, p0, Lhc;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lhc;->e:Lnc;

    iget-object v3, p0, Lhc;->n:Ljava/util/ArrayList;

    iget-object v4, p0, Lhc;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lnc;->u(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Lhc;->h:Lic$a;

    iget-object v2, p0, Lhc;->o:Ljava/lang/Object;

    iget-boolean v3, p0, Lhc;->m:Z

    invoke-static {v0, v1, v2, v3}, Lic;->k(Lf4;Lic$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lhc;->e:Lnc;

    iget-object v2, p0, Lhc;->p:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lnc;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
