.class public Lkb$d;
.super Lkb$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Lkb$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkb$c;-><init>(Lkb$a;)V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lkb$d;->b:Landroid/view/Choreographer;

    .line 3
    new-instance p1, Lkb$d$a;

    invoke-direct {p1, p0}, Lkb$d$a;-><init>(Lkb$d;)V

    iput-object p1, p0, Lkb$d;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method
