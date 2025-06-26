.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

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
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object p3, p2, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->f:Lav6;

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p2, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->g:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p3}, Lav6;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object p2, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->vClearButton:Landroid/view/View;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->g:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
