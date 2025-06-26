.class public final synthetic Lwq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lwq6;->e:Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lcom/noinnion/android/greader/ui/itemlist/ItemListFragment;->j:Z

    const/4 p1, 0x0

    return p1
.end method
