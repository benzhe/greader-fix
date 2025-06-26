.class public Lta$b;
.super Lta$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lta;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lta$a;-><init>(Lta;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lta$a;->a:Lta;

    invoke-virtual {v0, p1}, Lta;->b(I)Lsa;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
