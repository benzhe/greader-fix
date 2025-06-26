.class public Luj5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luj5$c;,
        Luj5$b;
    }
.end annotation


# static fields
.field public static final d:Luj5$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Luj5$b;

.field public c:Ltj5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Luj5$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luj5$c;-><init>(Luj5$a;)V

    sput-object v0, Luj5;->d:Luj5$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Luj5$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luj5;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Luj5;->b:Luj5$b;

    .line 4
    sget-object p1, Luj5;->d:Luj5$c;

    iput-object p1, p0, Luj5;->c:Ltj5;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Luj5;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Luj5;->c:Ltj5;

    invoke-interface {v0}, Ltj5;->a()V

    .line 2
    sget-object v0, Luj5;->d:Luj5$c;

    iput-object v0, p0, Luj5;->c:Ltj5;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Luj5;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "com.crashlytics.CollectCustomLogs"

    .line 4
    invoke-static {v0, v2, v1}, Lvh5;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lah5;->a:Lah5;

    const-string v0, "Preferences requested no custom logs. Aborting log file creation."

    invoke-virtual {p1, v0}, Lah5;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "crashlytics-userlog-"

    const-string v1, ".temp"

    .line 6
    invoke-static {v0, p1, v1}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Luj5;->b:Luj5$b;

    check-cast v1, Lii5$j;

    invoke-virtual {v1}, Lii5$j;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 8
    new-instance v1, Lxj5;

    invoke-direct {v1, v0, p1}, Lxj5;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Luj5;->c:Ltj5;

    return-void
.end method
