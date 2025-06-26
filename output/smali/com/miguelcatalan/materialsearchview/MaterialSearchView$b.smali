.class public Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setSuggestions([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnm6;

.field public final synthetic f:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;Lnm6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;->f:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    iput-object p2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;->e:Lnm6;

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
    iget-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;->f:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    iget-object p2, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;->e:Lnm6;

    .line 2
    iget-object p2, p2, Lnm6;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$b;->f:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 4
    iget-boolean p3, p3, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->w:Z

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
