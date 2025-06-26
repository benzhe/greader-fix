.class public Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C(Z)V

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lop6;->N1(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
