.class public Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


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
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
