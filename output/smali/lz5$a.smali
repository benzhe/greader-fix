.class public Llz5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llz5;->e(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lq06;

.field public final synthetic g:Llz5;


# direct methods
.method public constructor <init>(Llz5;Landroid/app/Activity;Lq06;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llz5$a;->g:Llz5;

    iput-object p2, p0, Llz5$a;->e:Landroid/app/Activity;

    iput-object p3, p0, Llz5$a;->f:Lq06;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Llz5$a;->g:Llz5;

    iget-object v1, p0, Llz5$a;->e:Landroid/app/Activity;

    iget-object v2, p0, Llz5$a;->f:Lq06;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lmz5;

    invoke-direct {v3, v0, v1}, Lmz5;-><init>(Llz5;Landroid/app/Activity;)V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v5, v0, Llz5;->n:Lj96;

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v7, v5, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 8
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const/4 v10, 0x2

    if-eq v7, v10, :cond_2

    const/4 v10, 0x3

    if-eq v7, v10, :cond_1

    const/4 v10, 0x4

    if-eq v7, v10, :cond_0

    .line 9
    new-instance v5, Lb96;

    invoke-direct {v5, v8, v8, v8}, Lb96;-><init>(Ljava/lang/String;Le96;Lb96$a;)V

    .line 10
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    check-cast v5, Lg96;

    .line 12
    iget-object v7, v5, Lg96;->f:Lb96;

    .line 13
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, v5, Lg96;->g:Lb96;

    .line 15
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    check-cast v5, Ld96;

    .line 17
    iget-object v5, v5, Ld96;->f:Lb96;

    .line 18
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    check-cast v5, Li96;

    .line 20
    iget-object v5, v5, Li96;->d:Lb96;

    .line 21
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_3
    check-cast v5, Lk96;

    .line 23
    iget-object v5, v5, Lk96;->f:Lb96;

    .line 24
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb96;

    if-eqz v6, :cond_4

    .line 26
    iget-object v7, v6, Lb96;->a:Ljava/lang/String;

    .line 27
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 28
    new-instance v7, Lnz5;

    invoke-direct {v7, v0, v6, v1}, Lnz5;-><init>(Llz5;Lb96;Landroid/app/Activity;)V

    goto :goto_2

    :cond_4
    const-string v7, "No action url found for action. Treating as dismiss."

    .line 29
    invoke-static {v7}, Lc50;->w0(Ljava/lang/String;)V

    move-object v7, v3

    .line 30
    :goto_2
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {v2, v4, v3}, Lq06;->g(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual {v2}, Lq06;->e()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 33
    :cond_6
    iget-object v4, v0, Llz5;->n:Lj96;

    .line 34
    iget-object v5, v4, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 35
    sget-object v6, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    if-ne v5, v6, :cond_9

    .line 36
    check-cast v4, Lg96;

    .line 37
    iget-object v5, v4, Lg96;->h:Lh96;

    .line 38
    iget-object v4, v4, Lg96;->i:Lh96;

    .line 39
    iget-object v6, v0, Llz5;->l:Landroid/app/Application;

    .line 40
    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_7

    .line 41
    invoke-virtual {v0, v5}, Llz5;->c(Lh96;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 42
    :cond_7
    invoke-virtual {v0, v4}, Llz5;->c(Lh96;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_8
    move-object v5, v4

    goto :goto_3

    .line 43
    :cond_9
    invoke-virtual {v4}, Lj96;->a()Lh96;

    move-result-object v5

    .line 44
    :cond_a
    :goto_3
    new-instance v4, Loz5;

    invoke-direct {v4, v0, v2, v1, v3}, Loz5;-><init>(Llz5;Lq06;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    invoke-virtual {v0, v5}, Llz5;->c(Lh96;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 46
    iget-object v0, v0, Llz5;->g:Lyz5;

    .line 47
    iget-object v3, v5, Lh96;->a:Ljava/lang/String;

    .line 48
    iget-object v0, v0, Lyz5;->a:Le27;

    .line 49
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v3, :cond_b

    .line 50
    new-instance v3, Li27;

    invoke-direct {v3, v0, v8, v5}, Li27;-><init>(Le27;Landroid/net/Uri;I)V

    goto :goto_4

    .line 51
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    new-instance v6, Li27;

    invoke-direct {v6, v0, v3, v5}, Li27;-><init>(Le27;Landroid/net/Uri;I)V

    move-object v3, v6

    .line 54
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 55
    iget-object v1, v3, Li27;->d:Ljava/lang/Object;

    if-nez v1, :cond_d

    .line 56
    iput-object v0, v3, Li27;->d:Ljava/lang/Object;

    .line 57
    sget v0, Lcom/google/firebase/inappmessaging/display/R$drawable;->image_placeholder:I

    if-eqz v0, :cond_c

    .line 58
    iput v0, v3, Li27;->c:I

    .line 59
    invoke-virtual {v2}, Lq06;->e()Landroid/widget/ImageView;

    move-result-object v0

    .line 60
    invoke-virtual {v3, v0, v4}, Li27;->b(Landroid/widget/ImageView;Lp17;)V

    goto :goto_5

    .line 61
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tag already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_10
    invoke-virtual {v4}, Loz5;->a()V

    :goto_5
    return-void
.end method
