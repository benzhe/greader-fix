.class public final Lm50;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lm50;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lm50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lm50;->a:J

    .line 3
    iput-object p3, p0, Lm50;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lm50;->c:Lm50;

    return-void
.end method
