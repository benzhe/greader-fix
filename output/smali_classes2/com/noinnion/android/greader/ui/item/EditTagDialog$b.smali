.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/EditTagDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La0;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/item/EditTagDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;La0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->b:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->a:La0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->a:La0;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, La0;->f(I)Landroid/widget/Button;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$a;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;->a:La0;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, La0;->f(I)Landroid/widget/Button;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b$b;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
