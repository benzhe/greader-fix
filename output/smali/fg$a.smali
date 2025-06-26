.class public Lfg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lt9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt9<",
            "Lfg$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$j$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt9;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lt9;-><init>(I)V

    sput-object v0, Lfg$a;->d:Lt9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfg$a;
    .locals 1

    .line 1
    sget-object v0, Lfg$a;->d:Lt9;

    invoke-virtual {v0}, Lt9;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfg$a;

    invoke-direct {v0}, Lfg$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Lfg$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lfg$a;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfg$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 3
    iput-object v0, p0, Lfg$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 4
    sget-object v0, Lfg$a;->d:Lt9;

    invoke-virtual {v0, p0}, Lt9;->b(Ljava/lang/Object;)Z

    return-void
.end method
