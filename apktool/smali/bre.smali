.class public final Lbre;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/net/SocketImplFactory;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/net/SocketImplFactory;

.field private c:Lbum;

.field private d:Lbtx;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lbum;Lbtx;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lbre;->c:Lbum;

    .line 25
    iput-object p3, p0, Lbre;->d:Lbtx;

    .line 26
    iput-object p1, p0, Lbre;->a:Ljava/lang/Class;

    .line 27
    iget-object v0, p0, Lbre;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Lbta;

    const-string v1, "Class was null"

    invoke-direct {v0, v1}, Lbta;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lbta;

    const-string v2, "Unable to create new instance"

    invoke-direct {v1, v2, v0}, Lbta;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/SocketImplFactory;Lbum;Lbtx;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lbre;->c:Lbum;

    .line 37
    iput-object p3, p0, Lbre;->d:Lbtx;

    .line 38
    iput-object p1, p0, Lbre;->b:Ljava/net/SocketImplFactory;

    .line 39
    iget-object v0, p0, Lbre;->b:Ljava/net/SocketImplFactory;

    if-nez v0, :cond_0

    new-instance v0, Lbta;

    const-string v1, "Factory was null"

    invoke-direct {v0, v1}, Lbta;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lbta;

    const-string v1, "Factory does not work"

    invoke-direct {v0, v1}, Lbta;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lbta;

    const-string v2, "Factory does not work"

    invoke-direct {v1, v2, v0}, Lbta;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public final createSocketImpl()Ljava/net/SocketImpl;
    .locals 4

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lbre;->b:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lbre;->b:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v1

    .line 92
    :goto_0
    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Lbrd;

    iget-object v2, p0, Lbre;->c:Lbum;

    iget-object v3, p0, Lbre;->d:Lbtx;

    invoke-direct {v0, v2, v3, v1}, Lbrd;-><init>(Lbum;Lbtx;Ljava/net/SocketImpl;)V

    .line 98
    :goto_1
    return-object v0

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbre;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 89
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
