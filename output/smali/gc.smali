.class public final Lgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/fragment/app/Fragment;

.field public final synthetic f:Landroidx/fragment/app/Fragment;

.field public final synthetic g:Z

.field public final synthetic h:Lf4;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Lnc;

.field public final synthetic k:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Landroid/view/View;Lnc;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgc;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lgc;->f:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lgc;->g:Z

    iput-object p4, p0, Lgc;->h:Lf4;

    iput-object p5, p0, Lgc;->i:Landroid/view/View;

    iput-object p6, p0, Lgc;->j:Lnc;

    iput-object p7, p0, Lgc;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgc;->e:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lgc;->f:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lgc;->g:Z

    iget-object v3, p0, Lgc;->h:Lf4;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lic;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLf4;Z)V

    .line 2
    iget-object v0, p0, Lgc;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lgc;->j:Lnc;

    iget-object v2, p0, Lgc;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lnc;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
