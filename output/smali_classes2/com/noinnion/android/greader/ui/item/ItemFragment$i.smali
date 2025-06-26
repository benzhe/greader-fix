.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltw6$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 3
    iget-object v2, v1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->g:Lcom/noinnion/android/greader/ui/item/ItemFragment$b;

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, v1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v3, :cond_2

    .line 5
    iget v3, v3, Lkw6;->d:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, p1, :cond_0

    .line 6
    invoke-static {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object v1

    iput p1, v1, Lkw6;->d:I

    const-string v1, "item_font_type"

    .line 7
    invoke-static {v0, v1, p1}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    iget-object v1, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    iget-object v8, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    const-string v9, "ft"

    .line 12
    invoke-static {v9}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v6

    aput-object v9, v10, v7

    aput-object v9, v10, v5

    aput-object v9, v10, v4

    const/4 v11, 0x4

    aput-object v9, v10, v11

    const/4 v11, 0x5

    aput-object v9, v10, v11

    const/4 v11, 0x6

    aput-object v9, v10, v11

    const-string v9, "javascript:document.body.setAttribute(\'class\', document.body.className.replace(\'ft0\', \'%s\').replace(\'ft1\', \'%s\').replace(\'ft2\', \'%s\').replace(\'ft3\', \'%s\').replace(\'ft4\', \'%s\').replace(\'ft5\', \'%s\').replace(\'ft6\', \'%s\'));"

    .line 13
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object p1

    iget p1, p1, Lkw6;->e:I

    if-eq p1, p2, :cond_1

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object p1

    iput p2, p1, Lkw6;->e:I

    const-string p1, "item_body_font_size"

    .line 17
    invoke-static {v0, p1, p2}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 18
    iget-object p1, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 20
    iget-object v3, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    const-string v8, "webView"

    .line 22
    invoke-static {v3, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v8, "webView.settings"

    invoke-static {v3, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object p1

    iget p1, p1, Lkw6;->f:I

    if-eq p1, p3, :cond_3

    .line 24
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$i;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->e(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Lkw6;

    move-result-object p1

    iput p3, p1, Lkw6;->f:I

    const-string p1, "item_text_align"

    .line 25
    invoke-static {v0, p1, p3}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    iget-object p1, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_3

    .line 28
    iget-object v0, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment$b;->c:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "ta"

    .line 30
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v1, v3, v7

    aput-object v1, v3, v5

    const-string v1, "javascript:document.body.setAttribute(\'class\', document.body.className.replace(\'ta1\', \'%s\').replace(\'ta2\', \'%s\').replace(\'ta3\', \'%s\'));"

    .line 31
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    const-string p1, "mReadingOptions"

    .line 33
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    return-void
.end method
