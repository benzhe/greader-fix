.class public Ltm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsm5;


# instance fields
.field public final a:Lpm5;

.field public final b:Lrm5;

.field public final c:Lqm5;

.field public final d:J


# direct methods
.method public constructor <init>(JLpm5;Lrm5;Lqm5;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ltm5;->d:J

    .line 3
    iput-object p3, p0, Ltm5;->a:Lpm5;

    .line 4
    iput-object p4, p0, Ltm5;->b:Lrm5;

    .line 5
    iput-object p5, p0, Ltm5;->c:Lqm5;

    return-void
.end method


# virtual methods
.method public a()Lqm5;
    .locals 1

    .line 1
    iget-object v0, p0, Ltm5;->c:Lqm5;

    return-object v0
.end method

.method public b()Lrm5;
    .locals 1

    .line 1
    iget-object v0, p0, Ltm5;->b:Lrm5;

    return-object v0
.end method
