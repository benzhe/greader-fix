.class public final Lid0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lid0;->a:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lid0;->b:Ljava/lang/String;

    .line 4
    iput p1, p0, Lid0;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lid0;->a:I

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lid0;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lid0;->b:Ljava/lang/String;

    return-void
.end method
