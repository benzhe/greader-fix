.class public Lb96$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb96;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le96;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb96;
    .locals 4

    .line 1
    new-instance v0, Lb96;

    iget-object v1, p0, Lb96$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lb96$b;->b:Le96;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb96;-><init>(Ljava/lang/String;Le96;Lb96$a;)V

    return-object v0
.end method
