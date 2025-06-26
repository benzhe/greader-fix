.class public final Lm57$d;
.super Lc47$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lx47;


# direct methods
.method public constructor <init>(Lx47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc47$i;-><init>()V

    .line 2
    iput-object p1, p0, Lm57$d;->a:Lx47;

    return-void
.end method


# virtual methods
.method public a(Lc47$f;)Lc47$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lm57$d;->a:Lx47;

    invoke-static {p1}, Lc47$e;->a(Lx47;)Lc47$e;

    move-result-object p1

    return-object p1
.end method
