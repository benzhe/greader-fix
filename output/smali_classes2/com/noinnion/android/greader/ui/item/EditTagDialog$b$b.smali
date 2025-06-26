.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$b;->e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$b;->e:Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->b:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lt75;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110327

    .line 4
    invoke-virtual {v0, v1}, Lt75;->m(I)Lt75;

    new-instance v1, Llq6;

    invoke-direct {v1, p1}, Llq6;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;)V

    const v2, 0x7f11034e

    .line 5
    invoke-virtual {v0, v2, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object v0

    new-instance v1, Lkq6;

    invoke-direct {v1, p1}, Lkq6;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;)V

    const/high16 p1, 0x1040000

    .line 6
    invoke-virtual {v0, p1, v1}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    const v0, 0x7f0c0046

    .line 7
    invoke-virtual {p1, v0}, Lt75;->o(I)Lt75;

    .line 8
    invoke-virtual {p1}, La0$a;->e()La0;

    return-void
.end method
