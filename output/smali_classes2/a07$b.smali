.class public La07$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Luz6;

.field public final b:La07$a;


# direct methods
.method public constructor <init>(Luz6;La07$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La07$b;->a:Luz6;

    .line 3
    iput-object p2, p0, La07$b;->b:La07$a;

    return-void
.end method
