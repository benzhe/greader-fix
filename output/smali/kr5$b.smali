.class public Lkr5$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ldu5;

.field public final b:Lcq5;

.field public final c:Z

.field public final d:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldu5;Lcq5;Lln5;ZLkr5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkr5$b;->a:Ldu5;

    .line 3
    iput-object p2, p0, Lkr5$b;->b:Lcq5;

    .line 4
    iput-object p3, p0, Lkr5$b;->d:Lln5;

    .line 5
    iput-boolean p4, p0, Lkr5$b;->c:Z

    return-void
.end method
