.class public Li0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li0;


# direct methods
.method public constructor <init>(Li0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li0$a;->e:Li0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li0$a;->e:Li0;

    invoke-virtual {v0, p1}, Li0;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
