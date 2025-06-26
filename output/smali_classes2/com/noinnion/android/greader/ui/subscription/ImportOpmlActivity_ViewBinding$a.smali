.class public Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$a;
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
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
