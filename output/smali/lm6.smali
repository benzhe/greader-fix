.class public Llm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Llm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    iget-object p2, p1, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    iget-object p1, p0, Llm6;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-virtual {p1}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->d()V

    :cond_0
    return-void
.end method
