.class public final Lv31;
.super Lf61;
.source "SourceFile"


# instance fields
.field public final h:Landroid/view/View;

.field public final i:Lxw0;

.field public final j:Luk2;

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public n:Lco3;

.field public final o:Lm31;


# direct methods
.method public constructor <init>(Li61;Landroid/view/View;Lxw0;Luk2;IZZLm31;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf61;-><init>(Li61;)V

    .line 2
    iput-object p2, p0, Lv31;->h:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lv31;->i:Lxw0;

    .line 4
    iput-object p4, p0, Lv31;->j:Luk2;

    .line 5
    iput p5, p0, Lv31;->k:I

    .line 6
    iput-boolean p6, p0, Lv31;->l:Z

    .line 7
    iput-boolean p7, p0, Lv31;->m:Z

    .line 8
    iput-object p8, p0, Lv31;->o:Lm31;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv31;->i:Lxw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv31;->i:Lxw0;

    .line 3
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    check-cast v0, Lww0;

    invoke-virtual {v0}, Lww0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
