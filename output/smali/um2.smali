.class public final Lum2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwm2;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lwm2;

    invoke-direct {v0}, Lwm2;-><init>()V

    iput-object v0, p0, Lum2;->a:Lwm2;

    return-void
.end method
