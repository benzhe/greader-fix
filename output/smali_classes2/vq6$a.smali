.class public final Lvq6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lww6$c;


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

    iput-object p1, p0, Lvq6$a;->a:Lvq6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvq6$a;->a:Lvq6;

    iget-object v0, v0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lvq6$a;->a:Lvq6;

    iget-object v1, v1, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    sget v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->T:I

    .line 3
    invoke-virtual {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lvq6$a;->a:Lvq6;

    iget-object v2, v2, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    invoke-virtual {v2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://translate.google.com/translate?sl=auto&tl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ln56;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "translation_language"

    .line 8
    invoke-static {v0, v1, p1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
