.class public final Lsq6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lap6;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

.field public final synthetic f:Lcom/noinnion/android/reader/ui/widget/ItemWebView;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;Lcom/noinnion/android/reader/ui/widget/ItemWebView;)V
    .locals 0

    iput-object p1, p0, Lsq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iput-object p2, p0, Lsq6;->f:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lap6;

    .line 2
    iget-object v0, p0, Lsq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    iget-object v1, p0, Lsq6;->f:Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->v(Landroid/webkit/WebView;Lap6;)V

    .line 4
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
