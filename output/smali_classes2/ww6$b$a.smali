.class public Lww6$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lww6$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lww6$b;


# direct methods
.method public constructor <init>(Lww6$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lww6$b$a;->e:Lww6$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lww6$b$a;->e:Lww6$b;

    iget-object p1, p1, Lww6$b;->b:Lww6;

    .line 2
    sget v0, Lww6;->g:I

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/noinnion/android/reader/R$array;->translation_language_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lww6;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "translation_language"

    .line 5
    invoke-static {v1, v2, v0}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lww6;->f:Lww6$c;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lww6$c;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lrb;->dismiss()V

    return-void
.end method
