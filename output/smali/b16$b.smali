.class public final Lb16$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lt16;


# direct methods
.method public constructor <init>(Lb16$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ld16;
    .locals 3

    .line 1
    iget-object v0, p0, Lb16$b;->a:Lt16;

    const-class v1, Lt16;

    invoke-static {v0, v1}, Lc50;->v(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lb16;

    iget-object v1, p0, Lb16$b;->a:Lt16;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb16;-><init>(Lt16;Lb16$a;)V

    return-object v0
.end method
