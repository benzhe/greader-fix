.class public final Lmr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final synthetic c:Lnr0;


# direct methods
.method public constructor <init>(Lnr0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmr0;->c:Lnr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lmr0;->a:J

    .line 3
    iput-wide v0, p0, Lmr0;->b:J

    return-void
.end method
