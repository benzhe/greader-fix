.class public Lpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

.field public final synthetic f:Lro;


# direct methods
.method public constructor <init>(Lro;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpo;->f:Lro;

    iput-object p2, p0, Lpo;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lpo;->f:Lro;

    .line 2
    iget-object p1, p1, Lro;->o:Lto;

    .line 3
    invoke-virtual {p1, p3}, Lto;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget p2, Lcom/cocosw/bottomsheet/R$id;->bs_more:I

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lpo;->f:Lro;

    invoke-static {p1}, Lro;->a(Lro;)V

    .line 5
    iget-object p1, p0, Lpo;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->o:Z

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lpo;->f:Lro;

    .line 8
    iget-object p1, p1, Lro;->o:Lto;

    .line 9
    invoke-virtual {p1, p3}, Lto;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llo;

    invoke-virtual {p1}, Llo;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lpo;->f:Lro;

    .line 11
    iget-object p1, p1, Lro;->p:Lro$c;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lpo;->f:Lro;

    .line 14
    iget-object p2, p1, Lro;->p:Lro$c;

    .line 15
    iget-object p2, p2, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p2, :cond_1

    .line 16
    iget-object p4, p1, Lro;->o:Lto;

    .line 17
    invoke-virtual {p4, p3}, Lto;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MenuItem;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 18
    :cond_1
    iget-object p1, p0, Lpo;->f:Lro;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
