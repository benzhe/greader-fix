.class public Lj9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lj9$c;


# direct methods
.method public constructor <init>(I[Lj9$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lj9$b;->a:I

    .line 3
    iput-object p2, p0, Lj9$b;->b:[Lj9$c;

    return-void
.end method
