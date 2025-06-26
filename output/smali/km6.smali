.class public Lkm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object p2, p0, Lkm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    iput-object p1, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->r:Ljava/lang/CharSequence;

    .line 3
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->u:Landroid/widget/ListAdapter;

    if-eqz p3, :cond_0

    instance-of p4, p3, Landroid/widget/Filterable;

    if-eqz p4, :cond_0

    .line 4
    check-cast p3, Landroid/widget/Filterable;

    invoke-interface {p3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lkm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 6
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    .line 7
    iput-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->r:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    if-eqz p3, :cond_1

    .line 9
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 10
    invoke-virtual {p2, p4}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->e(Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, p4}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->e(Z)V

    .line 13
    :goto_0
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->s:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->q:Ljava/lang/CharSequence;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 14
    iget-object p3, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->s:Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$d;->a(Ljava/lang/String;)Z

    .line 15
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->q:Ljava/lang/CharSequence;

    return-void
.end method
