.class public Lcom/miguelcatalan/materialsearchview/MaterialSearchView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miguelcatalan/materialsearchview/MaterialSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;


# direct methods
.method public constructor <init>(Lcom/miguelcatalan/materialsearchview/MaterialSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$a;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView$a;->e:Lcom/miguelcatalan/materialsearchview/MaterialSearchView;

    .line 2
    iget-object v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->m:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->n:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "android.speech.extra.MAX_RESULTS"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object v0, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->A:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->o:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 12
    iget-object p1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->l:Landroid/widget/EditText;

    if-ne p1, v1, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->d()V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->j:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/miguelcatalan/materialsearchview/MaterialSearchView;->a()V

    :cond_4
    :goto_0
    return-void
.end method
