.class public final Lvq6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvw6$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvq6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvq6;


# direct methods
.method public constructor <init>(Lvq6;)V
    .locals 0

    iput-object p1, p0, Lvq6$b;->a:Lvq6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvq6$b;->a:Lvq6;

    iget-object v0, v0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {v0, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    const/16 p2, 0x191

    if-ne p1, p2, :cond_1

    .line 3
    invoke-static {v0}, Liw6;->Y(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
