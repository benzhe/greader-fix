.class public Lno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lro;


# direct methods
.method public constructor <init>(Lro;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno;->a:Lro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lno;->a:Lro;

    .line 2
    iget-object v0, v0, Lro;->y:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lno;->a:Lro;

    .line 5
    iget-object v0, p1, Lro;->n:Landroid/widget/GridView;

    .line 6
    iget-object p1, p1, Lro;->o:Lto;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object p1, p0, Lno;->a:Lro;

    .line 9
    iget-object p1, p1, Lro;->n:Landroid/widget/GridView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/GridView;->startLayoutAnimation()V

    .line 11
    iget-object p1, p0, Lno;->a:Lro;

    .line 12
    iget-object p1, p1, Lro;->p:Lro$c;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lno;->a:Lro;

    .line 15
    iget-object p1, p1, Lro;->q:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
