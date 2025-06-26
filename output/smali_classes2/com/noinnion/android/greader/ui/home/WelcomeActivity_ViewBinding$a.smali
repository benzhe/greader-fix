.class public Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$a;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding;Lcom/noinnion/android/greader/ui/home/WelcomeActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/WelcomeActivity_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/home/WelcomeActivity;

    .line 2
    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/home/WelcomeActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
