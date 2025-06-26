.class public Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$b;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$b;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;Lku6;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
