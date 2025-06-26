.class public final Lk57$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Lk57;


# direct methods
.method public constructor <init>(Lk57;JLk57$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk57$b;->b:Lk57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lk57$b;->a:J

    return-void
.end method
