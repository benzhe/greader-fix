.class public Lqa$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lqa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lqa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqa;-><init>(Lqa;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lqa$c;->a:Lqa;

    return-void
.end method


# virtual methods
.method public a()Lqa;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(Le8;)V
    .locals 0

    return-void
.end method

.method public c(Le8;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
