.class public final Lj27$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le27$d;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lvt7;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lvt7;Le27$d;I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 5
    iput-object p1, p0, Lj27$a;->b:Landroid/graphics/Bitmap;

    .line 6
    iput-object p2, p0, Lj27$a;->c:Lvt7;

    .line 7
    sget-object p1, Lp27;->a:Ljava/lang/StringBuilder;

    const-string p1, "loadedFrom == null"

    .line 8
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lj27$a;->a:Le27$d;

    .line 10
    iput p4, p0, Lj27$a;->d:I

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lvt7;Le27$d;)V
    .locals 2

    .line 1
    sget-object v0, Lp27;->a:Ljava/lang/StringBuilder;

    const-string v0, "source == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Lj27$a;-><init>(Landroid/graphics/Bitmap;Lvt7;Le27$d;I)V

    return-void
.end method
