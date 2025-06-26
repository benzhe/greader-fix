.class public Lkb$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkb$d;-><init>(Lkb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lkb$d;


# direct methods
.method public constructor <init>(Lkb$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb$d$a;->e:Lkb$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lkb$d$a;->e:Lkb$d;

    iget-object p1, p1, Lkb$c;->a:Lkb$a;

    invoke-virtual {p1}, Lkb$a;->a()V

    return-void
.end method
